<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Disciplina
 *
 * @ORM\Table(name="disciplina")
 * @ORM\Entity
 */
class Disciplina
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=50, nullable=false)
     */
    private $nombre;

    /**
     * @var integer
     *
     * @ORM\Column(name="idtipo", type="integer", nullable=false)
     */
    private $idtipo;

    /**
     * @var boolean
     *
     * @ORM\Column(name="estado", type="boolean", nullable=false)
     */
    private $estado;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechacreacion", type="date", nullable=true)
     */
    private $fechacreacion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechaeliminacion", type="date", nullable=true)
     */
    private $fechaeliminacion;

    /**
     * @var integer
     *
     * @ORM\Column(name="iddisciplina", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddisciplina;


}

